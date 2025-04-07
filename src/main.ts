const toggle = document.getElementById('theme-toggle') as HTMLInputElement

if (toggle) {
  const savedTheme = localStorage.getItem('theme') ?? 'light'
  document.documentElement.setAttribute('data-theme', savedTheme)
  toggle.checked = savedTheme === 'dark'

  toggle.addEventListener('change', () => {
    const newTheme = toggle.checked ? 'dark' : 'light'
    document.documentElement.setAttribute('data-theme', newTheme)
    localStorage.setItem('theme', newTheme)
  })
}
