import Activity from './Activity';

const ActivityList = ({ activities, deleteActivity, updateActivity }) => {
  return (
    <>
      <ul>
        {
          activities.map(a => 
            
            <Activity 
              {...a} 
              deleteActivity={deleteActivity} 
              updateActivity={updateActivity}
            />
          )
        }
      </ul>
    </>
  )
}

export default ActivityList;