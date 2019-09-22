import React from "react";
import { ApolloProvider } from "@apollo/react-hooks";
import { createClient } from "./util/apollo";
import Users from "./Users";
import logo from "./logo.svg";
import "./App.css";

const App: React.FC = () => {
  const client = createClient();
  return (
    <ApolloProvider client={client}>
      <Users />
    </ApolloProvider>
  );
};

export default App;
