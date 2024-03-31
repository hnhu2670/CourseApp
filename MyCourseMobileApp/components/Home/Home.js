import {
  ActivityIndicator,
  ActivityIndicatorBase,
  Dimensions,
  Image,
  ImageBackground,
  ScrollView,
  StyleSheet,
  Text,
  View,
} from "react-native";
import Style from "./Style";
import React, { useContext, useEffect, useState } from "react";
import API, { endpoints } from "../../configs/API";
import MyStyles from "../../styles/MyStyles";
import { TouchableOpacity } from "react-native-gesture-handler";
import moment from "moment";
import axios from "axios";
import MyContext from "../../configs/MyContext";
import Carousel from "react-native-snap-carousel";
import Color from "../../styles/Color";
import { Entypo } from "@expo/vector-icons";
import Search from "../Layout/Search";
export const SLIDER_WIDTH = Dimensions.get("window").width;
export const ITEM_WIDTH = Math.round(SLIDER_WIDTH * 0.9);
const Home = ({ route, navigation }) => {
  const [current_user, dispatch] = useContext(MyContext);
  const [filter, setFilter] = useState([]);

  // console.log("current_user", current_user.avatar_url);
  const [courses, setCourses] = useState(null);
  const cateId = route.params?.cateId;

  useEffect(() => {
    const loadCourses = async () => {
      let url = endpoints["courses"];

      if (cateId !== undefined && cateId != null)
        url = `${url}?category_id=${cateId}`;

      try {
        let res = await axios.get(endpoints["courses"]);
        // console.log("data", res.data.results);
        setCourses(res.data.results);
      } catch (ex) {
        setCourses([]);
        console.error(ex);
      }
    };

    loadCourses();
  }, [cateId]);

  const goToLesson = (courseId) => {
    navigation.navigate("Lesson", { courseId: courseId });
  };
  const registerCourse = async (course_id) => {
    const formData = new FormData();
    formData.append("course_id", course_id);
    try {
      let response = await axios.post(
        endpoints["register-courses"](course_id),
        formData,
        {
          headers: {
            "Content-Type": "multipart/form-data",
          },
        }
      );

      alert("Thành công");
    } catch (error) {
      console.error(error);
      alert("Đã xảy ra lỗi");
    }
  };
  // search
  const search = (text) => {
    const filterName = courses.filter((item) =>
      // toLowerCase() chuyển chữ hoa thành thường
      item.name.toLowerCase().includes(text.toLowerCase())
    );
    // setCommittees(filterName);
    setFilter(filterName);
    console.log("Search text:", text);
  };
  const image =
    "https://res.cloudinary.com/dhdca9ibd/image/upload/v1711334976/courseapp/lgdkxuktbuj76pjzmntm.jpg";
  return (
    <View>
      <View style={Style.headers}>
        <View style={Style.text}>
          <Text style={Style.title}>Hello,</Text>
          <Text style={Style.name}>
            {current_user.last_name} {current_user.first_name}
          </Text>
        </View>
        {current_user != undefined ? (
          <>
            <Image
              style={Style.avatar}
              source={{ uri: current_user?.avatar_url }}
            />
          </>
        ) : (
          <>
            <ActivityIndicatorBase />
            <Text>không tìm thấy</Text>
          </>
        )}
      </View>

      <View style={MyStyles.sub_content}>
        <ImageBackground
          source={image}
          resizeMode="cover"
          style={Style.header_contain}
        >
          <Text>Find a course want to learn </Text>
          <Search onSearch={search} />
        </ImageBackground>

        <Text style={MyStyles.subject}>Danh sách khóa học</Text>
        <ScrollView
          horizontal //cho phép cuộn theo chiều ngang
          showsHorizontalScrollIndicator={false} //tắt thanh cuộn
          contentContainerStyle={Style.sliderContainer} //chỉnh css
        >
          {courses === null ? (
            <ActivityIndicator />
          ) : (
            courses.map((c, index) => (
              <View key={index} style={Style.slide}>
                <TouchableOpacity
                  style={{ width: "100%", borderRadius: 50 }}
                  onPress={() => goToLesson(c.id)}
                >
                  <Image
                    source={{ uri: c.image_url }}
                    style={[MyStyles.m_10, { height: 170, width: "100%" }]}
                  />
                </TouchableOpacity>
                <TouchableOpacity onPress={() => goToLesson(c.id)}>
                  <Text style={[MyStyles.m_10, MyStyles.title]}>
                    {c.subject}
                  </Text>
                  <Text style={MyStyles.m_10}>
                    {moment(c.created_date).fromNow()}
                  </Text>
                </TouchableOpacity>
                {/* <TouchableOpacity
                  onPress={() => registerCourse(c.id)}
                  style={{
                    backgroundColor: Color.main_color,
                    borderRadius: 20,
                    padding: 5,
                  }}
                >
                  <Entypo name="plus" size={30} color={"#ffffff"} />
                </TouchableOpacity> */}
              </View>
            ))
          )}
        </ScrollView>
      </View>
    </View>
  );
};

export default Home;
