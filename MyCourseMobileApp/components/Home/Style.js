import { Dimensions, StyleSheet } from "react-native";
import Color from "../../styles/Color";
const windowWidth = Dimensions.get("window").width;
const windowHeight = Dimensions.get("window").height;
export default StyleSheet.create({
  headers: {
    paddingTop: windowHeight * 0.07,
    paddingHorizontal: windowWidth * 0.05,
    // backgroundColor: Color.bg_color,
    // color: 'white',
    height: windowHeight * 0.2,
    borderBottomLeftRadius: 30,
    borderBottomRightRadius: 30,
    display: "flex",
    flexDirection: "row",
  },
  text: {
    width: windowWidth * 0.7,
  },
  title: {
    fontSize: 20,
    color: Color.main_color,
  },
  name: {
    fontSize: 30,
    marginVertical: 10,
    fontWeight: "500",
    color: Color.main_color,
  },
  avatar: {
    width: 70,
    height: 70,
    borderRadius: 35,
    backgroundColor: "lightgray",
    marginRight: 20,
  },
  // Carousel
  carousel: {
    marginHorizontal: windowWidth * 0.015,
    backgroundColor: "red",
    marginLeft: 0,
    // width:windowWidth*0.7
  },
  renderItem1_parentView: {
    marginVertical: 20,
    // marginLeft:0,
    backgroundColor: "lightblue",
    // borderRadius: 18,
    // height: 300,
    // width: windowWidth * 0.6,
    // // justifyContent: "space-evenly",
    // alignItems: "center",
    // overflow: "hidden",
    // // marginHorizontal: 10
    width: 100,
    height: 300,
  },
  renderItem1_img: {
    height: 200,
    width: windowWidth * 0.5,
  },
  renderItem1_text: {
    textAlign: "left",
    fontSize: 20,
    marginVertical: 10,
  },
  sliderContainer: {
    paddingHorizontal: 10,
  },
  slide: {
    width: Dimensions.get("window").width * 0.5,
    height: 300,
    marginRight: 10,
    backgroundColor: "#eaeaea",
  },
  // header search
  header_contain: {
    height: windowHeight * 0.3,
    marginVertical: 20,
  },
});
