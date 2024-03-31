import {
  Image,
  StyleSheet,
  Text,
  TouchableOpacity,
  View,
  ActivityIndicator,
} from "react-native";
import React, { useEffect, useState } from "react";
import { Ionicons } from "@expo/vector-icons";
import { useNavigation, useRoute } from "@react-navigation/native";
import Colors from "../Shared/Colors";
import CourseContent from "./CourseContent";
import axios from "axios";
import { api, endpoints } from "../Shared/GlobalApi";
import { FontAwesome } from "@expo/vector-icons";

export default function CourseDetails() {
  const navigation = useNavigation();
  // const param=useRoute().params;
  // const [course, setCourse]=useState([])
  // useEffect(() => {
  // 	setCourse(param.CourseData)
  // }, [])
  const param = useRoute();
  const { videoCourse } = param.params;
  const [lesson, setLessons] = useState(null);
  let count = 0;

  const loadLessons = async () => {
    try {
      // let res = await axios.get('http://192.168.2.133:8000/get-course/1/lessons/');
      //     console.log('get_lesson', res.data)
      let res = await axios.get(endpoints["lessons"](videoCourse.id));
      // console.log('get_lesson', res.data)
      setLessons(res.data);
    } catch (ex) {
      console.error(ex);
    }
  };
  useEffect(() => {
    loadLessons();
  }, []);

  return (
    <View style={styles.container}>
      <TouchableOpacity onPress={() => navigation.goBack()}>
        <Ionicons name="arrow-back" size={24} color="black" />
      </TouchableOpacity>
      <View>
        <Text style={styles.nameCourse}>Python Basics</Text>
        <Text style={styles.author}>By Tuan Dang</Text>
        <Image
          style={styles.imgCourseDetail}
          source={require("./../Assets/Images/course-detail1.png")}
        />
        <Text style={styles.aboutCourse}>About Course</Text>
        <Text style={styles.courseDesc}>
          Python is a general-purpose, high-level programming language. Its
          design philosophy emphasizes code readability with its notable use of
          significant whitespace.{" "}
        </Text>

        {/* Course Parts: */}
        <View>
          <Text style={styles.aboutCourse}>Course Content</Text>

          {lesson === null ? (
            <ActivityIndicator />
          ) : (
            lesson.map((s) => {
              count += 1;
              return (
                <TouchableOpacity
                  key={s.id}
                  style={styles.courseContentContainer}
                  onPress={() =>
                    navigation.navigate("video-player", { detailCourse: s })
                  }
                >
                  <Text style={styles.indexNum}>0{count}</Text>
                  <Text style={styles.partTitle}>{s.subject}</Text>
                  <FontAwesome
                    style={styles.playIcon}
                    name="play-circle"
                    size={24}
                    color="black"
                  />
                </TouchableOpacity>
                // <TouchableOpacity key={s.id}>
                // 	<Image
                // 		style={styles.imgCourse}
                // 		source={{uri:s.image}}/>
                // 	<Text>{s.subject}</Text>
                // </TouchableOpacity>
              );
            })
          )}
        </View>
      </View>
    </View>
  );
}

const styles = StyleSheet.create({
  container: {
    padding: 30,
    paddingTop: 30,
    backgroundColor: Colors.bgColor,
  },
  nameCourse: {
    fontSize: 22,
    fontWeight: "bold",
    marginTop: 14,
    marginBottom: 8,
  },
  author: {
    color: Colors.gray,
    marginBottom: 10,
  },
  imgCourseDetail: {
    width: "100%",
    height: 180,
    borderRadius: 8,
  },
  aboutCourse: {
    fontSize: 18,
    fontWeight: "bold",
    marginTop: 22,
    marginBottom: 8,
  },
  courseDesc: {
    color: Colors.gray,
  },
  aboutCourse: {
    fontSize: 18,
    fontWeight: "bold",
    marginTop: 22,
    marginBottom: 8,
  },
  courseDesc: {
    color: Colors.gray,
  },
  courseContentContainer: {
    display: "flex",
    flexDirection: "row",
    padding: 15,
    marginBottom: 8,
    borderRadius: 5,
    alignItems: "center",
    backgroundColor: Colors.white,
  },
  indexNum: {
    fontSize: 30,
    fontWeight: "bold",
    color: Colors.gray,
    paddingRight: 12,
  },
  partTitle: {
    fontSize: 16,
    fontWeight: "bold",
  },
  playIcon: {
    position: "absolute",
    right: 20,
    color: Colors.primary,
  },
});
