import {
  createDrawerNavigator,
  DrawerContentScrollView,
  DrawerItem,
  DrawerItemList,
} from "@react-navigation/drawer";
import { NavigationContainer } from "@react-navigation/native";
import { ActivityIndicator } from "react-native";
import Home from "./components/Home/Home";
import Login from "./components/User/Login";
import API, { endpoints } from "./configs/API";
import React, { createContext, useReducer } from "react";
import Lesson from "./components/Lesson/Lesson";
import LessonDetails from "./components/Lesson/LessonDetails";
import MyUserReducer from "./reducers/MyUserReducer";
import Logout from "./components/User/Logout";
import Register from "./components/User/Register";
import { createStackNavigator } from "@react-navigation/stack";
import MyContext from "./configs/MyContext";
import AsyncStorage from "@react-native-async-storage/async-storage";

const Drawer = createDrawerNavigator();
const Stack = createStackNavigator();
// export const MyUserContext = createContext();

function App() {
  // const [user, dispatch] = useReducer(MyUserReducer, null)
  const [user, dispatch] = useReducer(
    MyUserReducer,
    AsyncStorage.getItem("user") || null
  );

  return (
    <MyContext.Provider value={[user, dispatch]}>
      <NavigationContainer>
        <Drawer.Navigator initialRouteName="Login">
          <Drawer.Screen
            name="Login"
            component={Login}
            options={{
              headerShown: false,
            }}
          />
          <Drawer.Screen
            name="Home"
            component={Home}
            options={{ title: "Khóa học", headerShown: false }}
          />
          <Drawer.Screen
            name="Lesson"
            component={Lesson}
            options={{
              title: "Bài học",
              drawerItemStyle: { display: "none" },
            }}
          />
          <Drawer.Screen
            name="LessonDetails"
            component={LessonDetails}
            options={{
              title: "Chi tiết bài học",
              drawerItemStyle: { display: "none" },
            }}
          />
          <Drawer.Screen name="Register" component={Register} />
          <Drawer.Screen name="Loout" component={Logout} />
          {/* <Drawer.Screen name={user.username} component={Home} /> */}

          {/* {user === null ? <>
            <Drawer.Screen name="Login" component={Login} />
            <Drawer.Screen name="Register" component={Register} />
          </> : <>
            <Drawer.Screen name={user.username} component={Home} />
          </>} */}
        </Drawer.Navigator>
      </NavigationContainer>
    </MyContext.Provider>
  );
}

// const MyDrawerItem = (props) => {
//   const [categories, setCategories] = React.useState(null);

//   React.useEffect(() => {
//     const loadCategories = async () => {
//       try {
//         let res = await API.get(endpoints['categories']);
//         setCategories(res.data);
//       } catch (ex) {
//         setCategories([])
//         console.error(ex);
//       }
//     }

//     loadCategories();

//   }, []);

//   return (
//     <DrawerContentScrollView {...props}>
//       <DrawerItemList {...props} />
//       {categories === null ? <ActivityIndicator /> : <>
//         {categories.map(c => <DrawerItem key={c.id} label={c.name} onPress={() => props.navigation.navigate("Home", { "cateId": c.id })} />)}
//       </>}
//     </DrawerContentScrollView>
//   );
// }

export default App;
