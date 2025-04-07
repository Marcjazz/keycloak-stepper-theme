<!DOCTYPE html>
<html lang="${locale}" data-theme="light">

<head>
  <title>
    ${msg("loginTitle")}
  </title>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <link rel="stylesheet" href="${url.resourcesPath}/css/style.css" />
  <link rel="text/javascript" href="${url.resourcesPath}/js/main.js" />
</head>

<body class="login-page">
  <div class="login-card">
    <div class="flex justify-end">
      <label class="swap swap-rotate">
        <input type="checkbox" id="theme-toggle" class="theme-controller" value="light"/>
        <!-- sun icon -->
        <svg class="swap-on fill-current w-6 h-6" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">
          <path d="M5 12a7 7 0 1114 0 7 7 0 01-14 0z" />
          <path d="M12 3v2m0 14v2m8-10h2M2 12H4m15.364-6.364l1.414 1.414M4.222 19.778l1.414-1.414m0-12.728L4.222 4.222m15.142 15.142l-1.414-1.414" />
        </svg>
        <!-- moon icon -->
        <svg class="swap-off fill-current w-6 h-6" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">
          <path d="M21 12.79A9 9 0 0111.21 3c0-.09 0-.18.01-.27A9.004 9.004 0 0012.79 21a9.006 9.006 0 008.21-8.21z" />
        </svg>
      </label>
    </div>
    <h1 class="login-title">
      <span class="login-highlight">
        ${msg("loginAccountTitle")}
      </span>.
    </h1>
    <#-- Identity Provider login button -->
      <#if identityProviders?? && identityProviders?size> 0>
        <#list identityProviders as idp>
          <button type="button"
            class="idp-button"
            onclick="location.href='${url.loginAction}?kc_idp=${idp.alias}'">
            <img src="./resources/assets/${idp.alias}.svg" alt="${idp.displayName}" class="w-5 h-5" />
            ${idp.displayName}
          </button>
        </#list>
        <div class="divider-text">or</div>
      </#if>
      <form id="kc-form-login" class="space-y-4" action="${url.loginAction}" method="post">
        <#if message?has_content>
          <div class="form-error">
            ${message.summary}
          </div>
        </#if>
        <div class="form-control">
          <label for="username" class="label">
            <span class="form-label">
              ${msg("usernameOrEmail")}
            </span>
          </label>
          <input id="username" name="username" type="email" class="form-input" autofocus required
            placeholder="${msg("usernameOrEmail")}" value="${(login.username!'')}" />
        </div>
        <div class="form-control">
          <label for="password" class="label">
            <span class="form-label">
              ${msg("password")}
            </span>
          </label>
          <input id="password" name="password" type="password" class="form-input" required
            placeholder="${msg("password")}" />
          <div class="text-right mt-2">
            <a href="${url.loginResetCredentialsUrl}" class="form-link">
              ${msg("doForgotPassword")}
            </a>
          </div>
        </div>
        <button type="submit" class="form-submit">
          ${msg("doLogIn")}
        </button>
      </form>
      <p class="form-footer">
        ${msg("noAccount")}
        <a href="${url.registrationUrl}" class="form-footer-link">
          ${msg("doRegister")}
        </a>
      </p>
  </div>
</body>

</html>