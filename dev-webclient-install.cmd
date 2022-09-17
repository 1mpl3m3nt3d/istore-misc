@echo off

cd /d %~dp0

cd ..

cd istore-webclient

echo.
echo Installing...

echo.
echo Enabling corepack...
call corepack enable

echo.
call npm --global update

echo.
call npx --yes npm-check-updates@latest --target latest --pre 1 --upgrade --color ^
--concurrency 8 --configFilePath . --configFileName .ncurc.json --cwd . ^
--dep prod,dev,bundle,optional,peer --errorLevel 1

echo.
call yarn set version berry

echo.
call yarn plugin import typescript
echo.
call yarn plugin import interactive-tools

echo.
call yarn config set --home enableTelemetry false

echo.
call yarn config set enableTelemetry false
echo.
call yarn config set nodeLinker pnp
echo.
call yarn config set packageExtensions --json^
 ^"{ \"@mui/x-date-pickers@*\": { \"dependencies\": { \"react-dom\": \"*\" } },^
 \"chalk@*\": { \"dependencies\": { \"#ansi-styles\": \"npm:ansi-styles@*\", \"#supports-color\": \"npm:supports-color@*\" } },^
 \"eslint-config-react-app@*\": { \"dependencies\": { \"@babel/plugin-syntax-flow\": \"*\", \"@babel/plugin-transform-react-jsx\": \"*\" } },^
 \"material-react-table@*\": { \"dependencies\": { \"react-dom\": \"*\" } },^
 \"material-table@*\": { \"dependencies\": { \"@emotion/react\": \"*\" } },^
 \"material-ui-popup-state@*\": { \"dependencies\": { \"react-dom\": \"*\" } },^
 \"npm-check-updates@*\": { \"dependencies\": { \"ini\": \"*\" } },^
 \"react-router-dom@*\": { \"dependencies\": { \"@remix-run/router\": \"*\" } },^
 \"stylelint-config-recommended-scss@*\": { \"dependencies\": { \"postcss\": \"*\" } },^
 \"stylelint-config-xo-scss@*\": { \"dependencies\": { \"postcss\": \"*\" } } }^"
echo.
call yarn config set pnpEnableEsmLoader true
echo.
call yarn config set pnpEnableInlining true
echo.
call yarn config set pnpFallbackMode dependencies-only
echo.
call yarn config set pnpMode strict

echo.
call yarn install
echo.
call yarn up
echo.
call yarn
echo.
call yarn dlx @yarnpkg/sdks vscode
echo.
call yarn

echo.
echo Done!

echo.
pause
