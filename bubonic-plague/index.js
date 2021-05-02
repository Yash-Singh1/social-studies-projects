setTimeout(() => {
  window.typed = new Typed('#displayed', {
    typeSpeed: 50,
    backSpeed: 10,
    showCursor: true,
    smartBackspace: true,
    strings,
    onStringTyped: (self) => {
      if (!strings[self].startsWith('<next/>')) {
        window.typed.stop();
      }
    }
  });
  document.getElementById('press-space').onclick = () => window.typed.start();
  onkeyup = (event) => {
    var code = event.which || event.keyCode;
    if (code === 32) {
      window.typed.start();
    }
  };
}, 1000);
