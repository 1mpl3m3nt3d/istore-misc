cd ..
cd istore-webclient

echo
yarn config set --home enableTelemetry false

echo
yarn config set enableTelemetry false
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
read -p "Press any key to exit..."
