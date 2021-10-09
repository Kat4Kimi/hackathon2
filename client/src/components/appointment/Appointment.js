import { useState } from 'react';
import ActivityForm from './ActivityForm';

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
        <br />
        {
          editing ?
          <>
            <ServiceForm
              id={id}
              vet={vet}
              groomer={groomer}
              trainer={trainer}
              updateAppointment={updateService}
              setEdit={setEdit}
            />
						<ServiceForm
              id={id}
              vet={vet}
              groomer={groomer}
              trainer={trainer}
              updateAppointment={deleteAppointment}
              setDelete={setDelete}
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