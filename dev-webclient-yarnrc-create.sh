cd ..
cd istore-webclient

echo
yarn config set --home enableTelemetry false

echo
yarn config set enableColors true
echo
yarn config set enableGlobalCache false
echo
yarn config set enableHyperlinks true
echo
yarn config set enableImmutableCache false
echo
yarn config set enableImmutableInstalls false
echo
yarn config set enableInlineBuilds false
echo
yarn config set enableInlineHunks true
echo
yarn config set enableMessageNames true
echo
yarn config set enableMirror true
echo
yarn config set enableNetwork true
echo
yarn config set enableProgressBars true
echo
yarn config set enableScripts true
echo
yarn config set enableStrictSsl true
echo
yarn config set enableTelemetry false
echo
yarn config set networkConcurrency 50
echo
yarn config set nmMode hardlinks-global
echo
yarn config set nodeLinker pnp
echo
yarn config set packageExtensions --json \
'{ "@mui/x-date-pickers@*": { "dependencies": { "react-dom": "*" } },
"@svgr/core@*": { "dependencies": { "@babel/core": "*" } },
"chalk@*": { "dependencies": { "#ansi-styles": "npm:ansi-styles@*", "#supports-color": "npm:supports-color@*" } },
"eslint-config-react-app@*": { "dependencies": { "@babel/plugin-syntax-flow": "*", "@babel/plugin-transform-react-jsx": "*" } },
"material-react-table@*": { "dependencies": { "react-dom": "*" } },
"material-table@*": { "dependencies": { "@emotion/react": "*" } },
"material-ui-popup-state@*": { "dependencies": { "react-dom": "*" } },
"npm-check-updates@*": { "dependencies": { "ini": "*" } },
"react-router-dom@*": { "dependencies": { "@remix-run/router": "*" } },
"stylelint-config-recommended-scss@*": { "dependencies": { "postcss": "*" } },
"stylelint-config-xo-scss@*": { "dependencies": { "postcss": "*" } } }'
echo
yarn config set pnpEnableEsmLoader true
echo
yarn config set pnpEnableInlining true
echo
yarn config set pnpFallbackMode dependencies-only
echo
yarn config set pnpMode strict
echo
yarn config set preferAggregateCacheInfo false
echo
yarn config set preferDeferredVersions false
echo
yarn config set preferInteractive false
echo
yarn config set preferTruncatedLines false
echo
yarn config set progressBarStyle default

echo
read -p "Press any key to exit..."
