import { Image, StyleSheet, Text, View, TouchableOpacity } from "react-native";
import React from "react";
import { useContext } from "react";
import MyContext from "../Shared/MyContext";

export default function WelcomeHeader() {
  const [current_user, dispatch] = useContext(MyContext);
  // console.log("current_user", current_user);

  return (
    <View style={styles.container}>
      <View>
        <Text style={styles.helloText}>Hello</Text>
        <Text style={styles.nameText}>
          {current_user.last_name} {current_user.first_name}
        </Text>
      </View>
      <TouchableOpacity style={styles.imgContainer}>
        <Image
          style={styles.imgUser}
          source={{ uri: current_user?.avatar_url }}
        />
      </TouchableOpacity>
    </View>
  );
}

const styles = StyleSheet.create({
  container: {
    marginTop: 15,
    marginBottom: 15,
    display: "flex",
    flexDirection: "row",
    justifyContent: "space-between",
    alignContent: "center",
    // backgroundColor: 'red',
  },
  imgContainer: {
    height: 62,
    width: 62,
    borderRadius: 35,
  },
  imgUser: {
    // backgroundColor: "lightgray",
    height: "100%",
    width: "100%",
    borderRadius: 30,
  },
  helloText: {
    fontSize: 18,
  },
  nameText: {
    fontSize: 22,
    fontWeight: "bold",
  },
});
