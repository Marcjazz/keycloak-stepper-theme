<!DOCTYPE html>
<html lang="${locale}" data-theme="dark">

<head>
    <title>
        ${msg("registerTitle")}
    </title>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="${url.resourcesPath}/css/style.css" />
    <script type="text/javascript" src="${url.resourcesPath}/js/main.js"></script>
</head>

<body class="login-page">
    <div class="login-card">
        <div class="theme-swapper">
            <label class="theme-swapper-label">
                <input type="checkbox" id="theme-toggle" class="theme-controller" value="dark" />
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
                ${msg("registerAccountTitle")}
            </span>.
        </h1>
        <form id="kc-register-form" action="${url.registrationAction}" method="post" class="form-container">
            <!-- Stepper Progress Bar -->
            <div class="stepper-wrapper">
                <div class="step step-active">
                    <div class="step-number">1</div>
                    <div>
                        ${msg("userInformation")}
                    </div>
                </div>
                <div class="step-line"></div>
                <div class="step">
                    <div class="step-number">2</div>
                    <div>
                        ${msg("username")}
                    </div>
                </div>
            </div>
            <#if message?has_content>
                <div class="form-error">
                    ${message.summary}
                </div>
            </#if>
            <!-- Step 1 -->
            <div class="form-step" id="step-1">
                <div class="form-control">
                    <label for="firstName" class="label">
                        ${msg("firstName")}
                    </label>
                    <input class="form-input" type="text" name="firstName" required autofocus
                        placeholder="${msg("firstName")}" value="${(register.firstName)!''}" />
                </div>
                <div class="form-control">
                    <label for="lastName" class="label">
                        ${msg("lastName")}
                    </label>
                    <input class="form-input" type="text" name="lastName" required
                        placeholder="${msg("lastName")}" value="${(register.lastName)!''}" />
                </div>
                <div class="form-control">
                    <label for="gender" class="label">
                        ${msg("gender")}
                    </label>
                    <div class="gender-options">
                        <label class="label"><input class="radio" type="radio" name="profile.attributes.gender" value="male" required />
                            ${msg("genderMale")}
                        </label>
                        <label class="label"><input class="radio" type="radio" name="profile.attributes.gender" value="female" />
                            ${msg("genderFemale")}
                        </label>
                        <label class="label"><input class="radio" type="radio" name="profile.attributes.gender" value="other" />
                            ${msg("genderOther")}
                        </label>
                    </div>
                </div>
                <div class="form-control">
                    <label for="dob" class="label">
                        ${msg("dob")!"Date of Birth"}
                    </label>
                    <input id="dob" class="form-input" type="date" name="profile.attributes.dob" required
                        value="${(register['profile.attributes.dob']
)!''}" />
                </div>
                <div class="form-control">
                    <label for="phoneNumber" class="label">
                        ${msg("phoneNumber")!"Phone Number"}
                    </label>
                    <input id="phoneNumber" class="form-input" type="tel" name="profile.attributes.phoneNumber" required placeholder="${msg("phoneNumber")}"
                        value="${(register['profile.attributes.phoneNumber']
)!''}" />
                </div>
                <div class="button-group">
                    <a href="${url.loginUrl}" class="btn-back">
                        ${msg("doBack")}
                    </a>
                    <button type="button" id="nextBtn" class="btn-primary">
                        ${msg("doContinue")!"Next"}
                    </button>
                </div>
            </div>
            <!-- Step 2 -->
            <div class="form-step hidden" id="step-2">
                <div class="form-control">
                    <label for="username" class="label">
                        ${msg("username")}
                    </label>
                    <input id="username" name="username" type="text" class="form-input" required
                        placeholder="${msg("username")}" value="${(register.username)!''}" />
                </div>
                <div class="form-control">
                    <label for="email" class="label">
                        ${msg("email")}
                    </label>
                    <input id="email" name="email" type="email" class="form-input" required
                        placeholder="${msg("email")}" value="${(register.email)!''}" />
                </div>
                <div class="form-control">
                    <label for="password" class="label">
                        ${msg("password")}
                    </label>
                    <input id="password" class="form-input" type="password" name="password" required
                        placeholder="${msg("password")}" />
                </div>
                <div class="form-control">
                    <label for="password-confirm" class="label">
                        ${msg("passwordConfirm")}
                    </label>
                    <input id="password-confirm" class="form-input" type="password" name="password-confirm" required
                        placeholder="${msg("passwordConfirm")}" />
                </div>
                <div class="button-group">
                    <button type="button" id="prevBtn" class="btn-outline">
                        ${msg("doBack")}
                    </button>
                    <button type="submit" class="btn-primary" value="${msg("doRegister")}">
                        ${msg("doRegister")}
                    </button>
                </div>
            </div>
        </form>
    </div>
</body>

</html>