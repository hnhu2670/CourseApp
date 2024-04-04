import {
  Image,
  StyleSheet,
  Text,
  TouchableOpacity,
  View,
  ActivityIndicator,
  ScrollView,
  ImageBackground,
  Alert,
  ActivityIndicatorBase,
} from "react-native";
import React, { useContext, useEffect, useState } from "react";
import { Ionicons } from "@expo/vector-icons";
import { FontAwesome } from "@expo/vector-icons";
import { SafeAreaView } from "react-native-safe-area-context";
import { AntDesign } from "@expo/vector-icons";
import { MaterialIcons } from "@expo/vector-icons";
import { useNavigation, useRoute } from "@react-navigation/native";
import Colors from "../Shared/Colors";
import CourseContent from "./CourseContent";
import axios from "axios";
import { api, endpoints } from "../Shared/GlobalApi";
import MyContext from "../Shared/MyContext";
import { Popup } from "react-native-popup-confirm-toast";
import ToastifyMessage from "../Shared/ToastifyMessage";

export default function CourseDetails() {
  const navigation = useNavigation();
  const [current_user, dispatch] = useContext(MyContext);
  // console.log(current_user);
  const param = useRoute();
  const { videoCourse, categories } = param.params;
  const [lesson, setLessons] = useState(null);
  const [check, setCheck] = useState(null);
  const [show, setShow] = useState("");
  const [messager, setMessager] = useState("");
  const [loading, setLoading] = useState(false);
  let count = 0;
  const checkRegister = async () => {
    try {
      let res = await axios.get(
        `${endpoints["check-register-courses"](current_user.id)}?course=${
          videoCourse.id
        }`
      );
      setCheck(res.data);
    } catch (ex) {
      console.error("loi", ex);
    }
  };
  const BottomNavigationBar = () => {
    return (
      <View style={styles.bottomNavigationBar}>
        {check == true ? (
          <>
            <View style={styles.buyCourseIcon}>
              <MaterialIcons name="local-mall" size={26} color="gray" />
            </View>
            <TouchableOpacity
              onPress={() => {
                Alert.alert("Thông báo", "Bạn đã đăng ký khóa học");
              }}
              style={[styles.buyCourseBtn, { backgroundColor: "gray" }]}
            >
              <Text style={styles.buyText}>Successfully</Text>
            </TouchableOpacity>
          </>
        ) : (
          <>
            <View style={styles.buyCourseIcon}>
              <MaterialIcons name="local-mall" size={26} color="#FF6670" />
            </View>
            <TouchableOpacity
              style={styles.buyCourseBtn}
              onPress={() => registerCourse(videoCourse.id)}
            >
              <Text style={styles.buyText}>Buy Now</Text>
            </TouchableOpacity>
          </>
        )}
      </View>
    );
  };

  const loadLessons = async () => {
    try {
      let res = await axios.get(endpoints["lessons"](videoCourse.id));
      setLessons(res.data);
    } catch (ex) {
      console.error(ex);
    }
  };

  const registerCourse = async (course_id) => {
    Alert.alert("Register of course", "Do you want register of course", [
      {
        text: "Cancel",
        onPress: () => console.log("Cancel Pressed"),
        style: "cancel",
      },
      { text: "OK", onPress: () => register() },
    ]);

    async function register() {
      const formData = new FormData();
      formData.append("course_id", course_id);
      console.log("usser", current_user.id);
      try {
        setLoading(true);
        let response = await axios.post(
          endpoints["register-courses"](current_user.id),
          formData,
          {
            headers: {
              "Content-Type": "multipart/form-data",
            },
          }
        );
        setMessager("Đăng ký thành công");
        setShow("success");
        setLoading(false);
        // navigation.navigate("home");
      } catch (error) {
        console.error(error);
        setMessager("Đã xảy ra lỗi");
        setShow(danger);
        setLoading(false);
      }
    }
  };

  useEffect(() => {
    loadLessons();
    checkRegister();
    if (show !== "") {
      const timer = setTimeout(() => {
        setShow("");
      }, 1500);
      return () => clearTimeout(timer);
    }
  }, [show]);

  return (
    <SafeAreaView style={styles.container}>
      <TouchableOpacity onPress={() => navigation.goBack()}>
        <Ionicons name="arrow-back" size={24} color="black" />
      </TouchableOpacity>
      <View>
        <Text style={styles.nameCourse}>{videoCourse.subject}</Text>
        <Text style={styles.author}>By Tuan Dang</Text>
        <ImageBackground
          style={styles.imgCourseDetail}
          source={require("./../Assets/Images/course-detail1.png")}
        >
          <Image
            style={{ width: 100, marginTop: -34, marginLeft: 10 }}
            resizeMode="contain"
            source={require("./../Assets/Images/bestseller.png")}
          />

          <View style={{ top: -20, left: 20, flexDirection: "row" }}>
            <View
              style={{
                flexDirection: "row",
                alignItems: "center",
                marginRight: 10,
              }}
            >
              <Ionicons name="people" size={24} color={"#61688B"} />
              <Text style={{ color: "#61688B", fontWeight: "bold" }}>10k</Text>
            </View>
            <View style={{ flexDirection: "row", alignItems: "center" }}>
              <AntDesign name="star" size={24} color="#fcb335" />
              <Text style={{ color: "#fcb335", fontWeight: "bold" }}>8.6k</Text>
            </View>
          </View>
          <Text
            style={{
              left: 20,
              fontSize: 26,
              fontWeight: "bold",
              color: "black",
            }}
          >
            $50
          </Text>
        </ImageBackground>

        <Text style={styles.aboutCourse}>About Course</Text>
        <Text style={styles.courseDesc}>{videoCourse.description}</Text>
      </View>

      {/* Course Parts: */}
      <View>
        <Text style={styles.aboutCourse}>Course Content</Text>
        <ScrollView height={180}>
          {lesson === null ? (
            <ActivityIndicator />
          ) : (
            lesson.map((s) => {
              count += 1;
              return (
                <>
                  {check == true ? (
                    <>
                      <TouchableOpacity
                        key={s.id}
                        style={styles.lessonItem}
                        onPress={() => {
                          navigation.navigate("video-player", {
                            detailCourse: s,
                          });
                        }}
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
                    </>
                  ) : (
                    <>
                      <TouchableOpacity
                        key={s.id}
                        style={styles.lessonItem}
                        onPress={() => alert("Bạn chưa đăng ký khoá học")}
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
                    </>
                  )}
                </>
              );
            })
          )}
        </ScrollView>
      </View>
      {loading == true ? (
        <>
          <ActivityIndicator />
        </>
      ) : (
        <>
          <BottomNavigationBar />
        </>
      )}

      {show == "success" && (
        <ToastifyMessage
          type="success"
          text={messager}
          description="Đăng ký thành công"
        />
      )}
      {show == "danger" && (
        <ToastifyMessage
          type="danger"
          text={messager}
          description="Đăng ký thất bại"
        />
      )}
    </SafeAreaView>
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
    height: 200,
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

  // Course Content:
  courseContentContainer: {
    flex: 1,
    // marginTop: -35,
    backgroundColor: "lightblue",
    borderTopLeftRadius: 50,
    borderTopRightRadius: 50,
  },
  lessonItem: {
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

  // Bottom Navigation Bar:
  bottomNavigationBar: {
    height: 80,
    bottom: 0,
    zIndex: 100,
    flexDirection: "row",
    alignItems: "center",
    justifyContent: "space-between",
    paddingHorizontal: 20,
  },
  buyCourseIcon: {
    height: 60,
    width: 70,
    backgroundColor: "#FFEDEE",
    borderRadius: 30,
    justifyContent: "center",
    alignItems: "center",
    marginRight: 10,
  },
  buyCourseBtn: {
    flex: 1,
    height: 60,
    backgroundColor: "#6E8AFA",
    borderRadius: 30,
    justifyContent: "center",
    alignItems: "center",
  },
  buyText: {
    fontSize: 15,
    color: Colors.white,
    fontWeight: "bold",
  },
});
