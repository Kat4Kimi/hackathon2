import Appointment from './Appointment';

const AppointmentList = ({ appointments, deleteAppointment, updateAppointment }) => {
  return (
    <>
      <ul>
        {
          appointments.map((a) => 
            
            (<Appointment 
              {...a} 
              deleteAppointment={deleteAppointment} 
              updateAppointment={updateAppointment}
            />)
          )
        }
      </ul>
    </>
  )
}

export default AppointmentList;