<!DOCTYPE html>
<html lang="${locale}" data-theme="light">

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
                <input type="checkbox" id="theme-toggle" class="theme-controller" value="light" />
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
            <!-- Step 1 -->
            <div class="form-step" id="step-1">
                <div class="form-control">
                    <label>
                        ${msg("firstName")}
                    </label>
                    <input class="form-input" type="text" name="firstName" required />
                </div>
                <div class="form-control">
                    <label>
                        ${msg("lastName")}
                    </label>
                    <input class="form-input" type="text" name="lastName" required />
                </div>
                <div class="form-control">
                    <label>
                        ${msg("gender")}
                    </label>
                    <div class="gender-options">
                        <label><input class="radio" type="radio" name="gender" value="male" required />
                            ${msg("genderMale")}
                        </label>
                        <label><input class="radio" type="radio" name="gender" value="female" />
                            ${msg("genderFemale")}
                        </label>
                        <label><input class="radio" type="radio" name="gender" value="other" />
                            ${msg("genderOther")}
                        </label>
                    </div>
                </div>
                <div class="form-control">
                    <label>
                        ${msg("email")}
                    </label>
                    <input class="form-input" type="email" name="email" required />
                </div>
                <div class="form-control">
                    <label>
                        ${msg("dob")!"Date of Birth"}
                    </label>
                    <input class="form-input" type="date" name="dob" required />
                </div>
                <div class="form-control">
                    <label>
                        ${msg("phoneNumber")!"Phone Number"}
                    </label>
                    <input class="form-input" type="tel" name="phoneNumber" required />
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
                    <label>
                        ${msg("username")}
                    </label>
                    <input class="form-input" type="text" name="username" required />
                </div>
                <div class="form-control">
                    <label>
                        ${msg("password")}
                    </label>
                    <input class="form-input" type="password" name="password" required />
                </div>
                <div class="form-control checkbox-group">
                    <label>
                        <input type="checkbox" name="terms" required />
                        <a href="${url.loginResetCredentialsUrl}" class="form-link">
                            ${msg("acceptTerms")!"Accept our and partners' terms and conditions"}
                        </a>
                    </label>
                </div>
                <div class="button-group">
                    <button type="button" id="prevBtn" class="btn-outline">
                        ${msg("doBack")}
                    </button>
                    <button type="submit" class="btn-primary">
                        ${msg("doRegister")}
                    </button>
                </div>
            </div>
        </form>
    </div>
</body>

</html>