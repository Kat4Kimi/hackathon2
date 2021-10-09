import Pet from './Pet';

const PetList = ({ pets, deletePet, updatePet }) => {
  return (
    <>
      <ul>
        {
          pets.map((p) => 
            
            (<Pet 
              {...p} 
              deletePet={deletePet} 
              updatePet={updatePet}
            />)
          )
        }
      </ul>
    </>
  )
}

export default PetList;