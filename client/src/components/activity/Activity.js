import { useState } from 'react';
import ActivityForm from './ActivityForm';

const  Appointment = ({ id, food, exercise, potty, other,  deleteAppointment, updateAppointment }) => {
  const [editing, setEdit] = useState(false)

  return (
    <>
    <br />
      <li>
        {food}
        <br />
        {exercise}
				<br />
        {potty}
        <br />
        {other}
        <br />
        {
          editing ?
          <>
            <ServiceForm
              id={id}
              vet={food}
              groomer={exercise}
              trainer={potty}
              trainer={other}
              updateAppointment={updateAppointment}
              setEdit={setEdit}
            />
						<ServiceForm
              id={id}
              vet={food}
              groomer={exercise}
              trainer={potty}
              trainer={other}
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