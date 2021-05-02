rm -rf hundred-years-war/
mkdir hundred-years-war/
cp bubonic-plague/.npmrc hundred-years-war/
cp bubonic-plague/index.css hundred-years-war/
cp bubonic-plague/index.html hundred-years-war/
cp bubonic-plague/index.js hundred-years-war/
cp bubonic-plague/main.js hundred-years-war/
cp bubonic-plague/hundred-years-war-strings.js hundred-years-war/strings.js
cat bubonic-plague/package.json | sed "s/bubonic-plague/hundred-years-war/;s/Bubonic Plague/Hundred Years' War/" > hundred-years-war/package.json
npm install --prefix ./hundred-years-war/
