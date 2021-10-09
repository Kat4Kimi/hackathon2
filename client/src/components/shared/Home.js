import { Link } from 'react-router-dom';
import Users from '../users/Users';

const Home = () => {
  <>
  <h1>Home Page</h1>
  <Link to="/users">
  <button type="button">View User Info</button>
  </Link>
  </>
}

export default Home;