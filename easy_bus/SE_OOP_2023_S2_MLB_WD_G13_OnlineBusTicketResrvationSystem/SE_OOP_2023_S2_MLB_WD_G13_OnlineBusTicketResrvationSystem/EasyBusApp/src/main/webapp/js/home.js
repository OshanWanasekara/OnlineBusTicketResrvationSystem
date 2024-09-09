const readMoreButton = document.querySelector('#read-more');
const hiddenText = document.querySelector('.hidden-text');

readMoreButton.addEventListener('click', () => {
  hiddenText.classList.toggle('hidden');

  if (hiddenText.classList.contains('hidden')) {
    readMoreButton.textContent = 'Read More';
  } else {
    readMoreButton.textContent = 'Read Less';
  }
});
