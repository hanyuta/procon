document.addEventListener('turbo:load', () => {
    const colorBoxContainer = document.querySelector('.color-box-container');
    const selectedColorField = document.getElementById('pm_color');
    const colorBar = document.getElementById('color-bar');

    colorBoxContainer.addEventListener('click', (event) => {
      const target = event.target;
      if (target.classList.contains('color-box')) {
        const colorClass = Array.from(target.classList).find(className => className.startsWith('select-color-'));
        const selectedColorCode = colorClass.replace('select-color-', '');
        selectedColorField.value = `#${selectedColorCode}`;

        // カラーバーに色を反映
        colorBar.style.backgroundColor = `#${selectedColorCode}`;
      }
    });
  });