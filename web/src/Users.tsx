import React from "react";
import gql from "graphql-tag";
import { useQuery } from "@apollo/react-hooks";

const LIST_USERS = gql`
  {
    listUsers {
      id
      name
      email
    }
  }
`;

const Loading = () => <>"Loading..."</>;
type User = {
  id: number;
  name: string;
  email?: string;
};
const Users = () => {
  const { loading, error, data } = useQuery(LIST_USERS);

  return (
    <div>
      <h1>Users!</h1>
      {error ? (
        <div>{`Error: ${error.message}`}</div>
      ) : loading ? (
        <div>Loading...</div>
      ) : (
        <ul>
          {data.listUsers.map((user: User) => (
            <li key={user.id}>
              {user.name}: {user.email}
            </li>
          ))}
        </ul>
      )}
    </div>
  );
};

export default Users;
