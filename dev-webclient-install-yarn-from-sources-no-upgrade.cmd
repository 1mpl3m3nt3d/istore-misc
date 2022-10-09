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
call yarn set version from sources --yarn-path

echo.
call yarn plugin import typescript
echo.
call yarn plugin import interactive-tools

echo.
call yarn config set --home enableTelemetry false

echo.
call yarn config set enableColors true
echo.
call yarn config set enableGlobalCache false
echo.
call yarn config set enableHyperlinks true
echo.
call yarn config set enableImmutableCache false
echo.
call yarn config set enableImmutableInstalls false
echo.
call yarn config set enableInlineBuilds false
echo.
call yarn config set enableInlineHunks true
echo.
call yarn config set enableMessageNames true
echo.
call yarn config set enableMirror true
echo.
call yarn config set enableNetwork true
echo.
call yarn config set enableProgressBars true
echo.
call yarn config set enableScripts true
echo.
call yarn config set enableStrictSsl true
echo.
call yarn config set enableTelemetry false
echo.
call yarn config set networkConcurrency 50
echo.
call yarn config set nmMode hardlinks-global
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
call yarn config set preferAggregateCacheInfo false
echo.
call yarn config set preferDeferredVersions false
echo.
call yarn config set preferInteractive false
echo.
call yarn config set preferTruncatedLines false
echo.
call yarn config set progressBarStyle default

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
