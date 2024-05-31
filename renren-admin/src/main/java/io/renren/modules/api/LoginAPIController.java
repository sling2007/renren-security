/**
 * Copyright (c) 2018 人人开源 All rights reserved.
 * <p>
 * https://www.renren.io
 * <p>
 * 版权所有，侵权必究！
 */

package io.renren.modules.api;

import io.renren.common.exception.ErrorCode;
import io.renren.common.utils.ConvertUtils;
import io.renren.common.utils.MessageUtils;
import io.renren.common.utils.Result;
import io.renren.common.validator.AssertUtils;
import io.renren.modules.security.entity.SysUserTokenEntity;
import io.renren.modules.security.service.ShiroService;
import io.renren.modules.security.user.UserDetail;
import io.renren.modules.sys.entity.SysUserEntity;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import lombok.AllArgsConstructor;
import org.apache.shiro.authc.IncorrectCredentialsException;
import org.apache.shiro.authc.LockedAccountException;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/**
 * 登录
 *
 * @author Mark sunlightcs@gmail.com
 */
@RestController
@Api(tags = "登录api管理")
@AllArgsConstructor
public class LoginAPIController {
    private final ShiroService shiroService;

    @GetMapping("login-info")
    @ApiOperation(value = "验证码")
    public Result loginInfo(HttpServletResponse response, @RequestParam(value = "token") String token) throws IOException {
        //uuid不能为空
        AssertUtils.isBlank(token, ErrorCode.TOKEN_NOT_EMPTY);

        //根据accessToken，查询用户信息
        SysUserTokenEntity tokenEntity = shiroService.getByToken(token);
        //token失效
        if (tokenEntity == null || tokenEntity.getExpireDate().getTime() < System.currentTimeMillis()) {
            throw new IncorrectCredentialsException(MessageUtils.getMessage(ErrorCode.TOKEN_INVALID));
        }

        //查询用户信息
        SysUserEntity userEntity = shiroService.getUser(tokenEntity.getUserId());

        //转换成UserDetail对象
        UserDetail userDetail = ConvertUtils.sourceToTarget(userEntity, UserDetail.class);

        //获取用户对应的部门数据权限
        List<Long> deptIdList = shiroService.getDataScopeList(userDetail.getId());
        userDetail.setDeptIdList(deptIdList);

        //账号锁定
        if (userDetail.getStatus() == 0) {
            throw new LockedAccountException(MessageUtils.getMessage(ErrorCode.ACCOUNT_LOCK));
        }

        return new Result<UserDetail>().ok(userDetail);
    }


}