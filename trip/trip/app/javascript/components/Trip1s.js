Import React from "Trip1s";
const Trip1s = (props) => {
  // props.trips
  // console.log(props);
  const { trip1s } = props;
  const renderTrip1s = () => {
    return stores.map((trip1s) => {
      return (
        <>
          <p>{trip1.name}</p>
          <a href={`/trip1s/${trip1.id}`}>{trip1.id}</a>
        </>
      );
    });
  };
  return (
    <div>
      <h1>Trip1s</h1>
      <a href="/trip1s/new">Add a trip</a>
      {renderTrip1s()}
    </div>
  );
};
export default Trip1s;