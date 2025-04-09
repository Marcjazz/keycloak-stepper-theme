type InputElement = HTMLInputElement | HTMLSelectElement

export const stepperFormEventHandler = () => {
  const step1 = document.getElementById('step-1') as HTMLElement
  const step2 = document.getElementById('step-2') as HTMLElement
  const nextBtn = document.getElementById('nextBtn') as HTMLButtonElement
  const prevBtn = document.getElementById('prevBtn') as HTMLButtonElement

  const stepperSteps = document.querySelectorAll('.stepper-wrapper .step')

  // Step 1 → Step 2
  nextBtn.addEventListener('click', () => {
    const step1Inputs = step1.querySelectorAll<InputElement>('input, select')

    // Validate all inputs
    let allValid = true
    for (const input of step1Inputs) {
      if (!input.checkValidity()) {
        allValid = false
        input.classList.add('focus-error')
        input.reportValidity()
        break
      }
    }

    if (allValid) {
      switchStep(step1, step2, 1)
    }
  })

  // Step 2 → Step 1
  prevBtn.addEventListener('click', () => {
    switchStep(step2, step1, 0)
  })

  function switchStep(
    fromStep: HTMLElement,
    toStep: HTMLElement,
    activeIndex: number
  ) {
    fromStep
      .querySelectorAll<InputElement>('input, select')
      .forEach((el) => (el.disabled = true))
    fromStep.classList.add('hidden')

    toStep
      .querySelectorAll<InputElement>('input, select')
      .forEach((el) => (el.disabled = false))
    toStep.classList.remove('hidden')
    const firstInput = toStep.querySelector('input, select') as HTMLElement
    firstInput?.focus()

    stepperSteps.forEach((step, index) => {
      if (index <= activeIndex) {
        step.classList.add('step-active')
      } else {
        step.classList.remove('step-active')
      }
    })
  }
}
