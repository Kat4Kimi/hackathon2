import { Link, withRouter } from 'react-router-dom';
import { AuthConsumer } from '../../providers/AuthProvider';
import { Menu } from 'semantic-ui-react';

const Navbar = ({ user, handleLogout, history, location }) => {

  const rightNavItems = () => {
    if (user) {
      // links for when the user is login in
      return (
        <Menu.Menu position='right'>
          <Menu.Item onClick={() => handleLogout(history)}
            Logout
          />
        </Menu.Menu>
      )
    } else {
      // links for when there is no user login 
      return(
        <Menu.Menu position='right'>
          <Menu.Item
              id='login'
              name='login'
              active={location.pathname === '/login'}
            />
          <Menu.Item
              id='register'
              name='register'
              active={location.pathname === '/register'}
            />
        </Menu.Menu>
      )
    }
  }
  return(
    <div>
      <Menu pointing secondary>
        <Link to='/'>
          <Menu.Item
            name='home'
            id='home'
            active={location.pathname === '/'}
          />
        </Link>
        <Link to='/'>
          <Menu.Item
            name='pets'
            id='pets'
            active={location.pathname === '/pet'}
          />
        </Link>
          { rightNavItems() }
      </Menu>
    </div>
  )
}

const ConnectedNavbar = (props) => (
  <AuthConsumer>
    { value => <Navbar {...value}  {...props}/>}
  </AuthConsumer>
)

export default withRouter(ConnectedNavbar)