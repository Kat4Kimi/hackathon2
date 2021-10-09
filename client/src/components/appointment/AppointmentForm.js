import { useState, useEffect } from 'react';

const AppointmentForm = ({ addAppointment, id, activity_id, vet, groomer, training, updateAppointment, setEdit }) => {
  const [appointment, setAppointment] = useState({ vet: "", groomer: "", training: "" })

  useEffect( () => {
    if (id) {
      setAppointment({ vet, groomer, training })
    }
  }, [])

  const handleSubmit = (e) => {
    e.preventDefault()
    if (id) {
      updateAppointment(id, appointment)
      setEdit(false)
    } else {
      addAppointment(appointment)
    }
    setAppointment({ vet: "", groomer: "", training: "" })
  }

  return (
    <>
      <form onSubmit={handleSubmit}>
        <input 
          name="vet"
          value={appointment.vet}
          onChange={(e) => setAppointment({...appointment, vet: e.target.value })}

          required
          placeholder="Veterinarian"
        />
        <input 
          name="groomer"
          value={appointment.groomer}
          onChange={(e) => setAppointment({...appointment, groomer: e.target.value })}

          required
          placeholder="Groomer"
        />
        <input 
          name="Training"
          value={appointment.training}
          onChange={(e) => setAppointment({...appointment, training: e.target.value })}

          required
          placeholder="Training"
        />
     
        <button type="submit">Submit</button>
      </form>

    </>
  )
}

export default AppointmentForm;