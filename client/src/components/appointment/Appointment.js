import { useState } from 'react';
import AppointmentForm from './AppointmentForm';

const  Appointment = ({ id, vet, groomer, training,  deleteAppointment, updateAppointment }) => {
  const [editing, setEdit] = useState(false)

  return (
    <>
    <br />
      <li>
        {vet}
        <br />
        {groomer}
				<br />
        {training}
        {
          editing ?
          <>
            <AppointmentForm
              id={id}
              vet={vet}
              groomer={groomer}
              training={training}
              updateAppointment={updateAppointment}
              setEdit={setEdit}
            />
          </>
          :
          <button onClick={() => setEdit(true)}>Edit</button>
        }
        <button onClick={() => deleteAppointment(id)}>Delete</button>
      </li>
     
    </>
  )
}

export default Appointment;