import axios from "axios";
import AsyncStorage from "@react-native-async-storage/async-storage";

// const SERVER_URL = 'http://172.16.16.13:8000';
// const SERVER = "http://172.16.16.13";

const SERVER_URL = "http://172.16.16.39:8000";
const SERVER = "http://172.16.16.39";
export const endpoints = {
  login: `${SERVER_URL}/o/token/`,
  register: `${SERVER_URL}/user/`,
  "current-user": `${SERVER_URL}/user/current_user/`,
  categories: `${SERVER_URL}/get_categories/`,
  courses: `${SERVER_URL}/get_course/`,
  lessons: (courseId) => `${SERVER_URL}/get_course/${courseId}/lessons/`,
  "lesson-details": (lessonId) => `${SERVER_URL}/get_lesson/${lessonId}/`,
  comments: (lessonId) => `${SERVER_URL}/get_lesson/${lessonId}/comment/`,
  "add-comment": (lessonId) => `${SERVER_URL}/get_lesson/${lessonId}/comments/`,
  "register-courses": (courseId) =>
    `${SERVER_URL}/user/${courseId}/add_course/`,
};

export const authApi = (token) =>
  axios.create({
    baseURL: SERVER,
    headers: {
      Authorization: `Bearer ${token}`,
    },
  });

export default axios.create({
  baseURL: SERVER,
});
