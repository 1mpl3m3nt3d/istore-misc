@echo off

cd /d %~dp0

cd ..

cd istore-webclient

echo.
call yarn config set --home enableTelemetry false

echo.
call yarn config set enableTelemetry false
echo.
call yarn config set nodeLinker pnp
echo.
call yarn config set packageExtensions --json^
 ^"{ \"@mui/x-date-pickers@*\": { \"dependencies\": { \"react-dom\": \"*\" } },^
 \"@svgr/core@*\": { \"dependencies\": { \"@babel/core\": \"*\" } },^
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
pause
