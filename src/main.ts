import "./css/global.css";
import { stepperFormEventHandler } from './stepper'

console.log('Loading page content...')
document.addEventListener('DOMContentLoaded', () => {
  console.log('Page content loaded successfully!')
  const theme = localStorage.getItem('theme') || 'light'
  document.documentElement.setAttribute('data-theme', theme)
  const themeToggle = document.getElementById(
    'theme-toggle'
  ) as HTMLInputElement
  if (themeToggle) {
    themeToggle.checked = theme === 'dark'
    themeToggle.addEventListener('change', () => {
      const newTheme = themeToggle.checked ? 'dark' : 'light'
      document.documentElement.setAttribute('data-theme', newTheme)
      localStorage.setItem('theme', newTheme)
    })
  }

  // handles stepper logic
  stepperFormEventHandler()
})
