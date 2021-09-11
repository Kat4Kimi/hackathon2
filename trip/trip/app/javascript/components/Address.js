import React from "react";

const Address  = (props) => {
  // props.stores
  const { address } = props;

  return (
    <div>
      <h1>{address.name}</h1>
      <a href={`/address/${address.id}/edit`}>Edit Store</a>
      <br></br>
      <a href={`/address/${address.id}`} data-method="delete"></a>
    </div>
  );
};
export default Address;

