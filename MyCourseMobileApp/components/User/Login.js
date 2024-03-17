import AsyncStorage from "@react-native-async-storage/async-storage";
import { useContext, useEffect, useState } from "react";
import { View, Text, TextInput, Touchable, ActivityIndicator, ImageBackground } from "react-native";
import { TouchableOpacity } from "react-native-gesture-handler";
import API, { authApi, endpoints } from "../../configs/API";
import MyContext from "../../configs/MyContext";
import MyStyles from "../../styles/MyStyles";
import Style from "./Style";
import axios from "axios";
import ToastifyMessage from "../Layout/ToastifyMessage";
import { Entypo, FontAwesome } from "@expo/vector-icons";
import Color from "../../styles/Color";

const Login = ({ navigation }) => {

    const [username, setUsername] = useState();
    const [password, setPassword] = useState();
    const [loading, setLoading] = useState(false);
    const [user, dispatch] = useContext(MyContext);
    const [show, setShow] = useState(false)
    const [error, setError] = useState('');
    const login = async () => {
        // Tạo form data để gửi trong yêu cầu
        const formData = new FormData();
        formData.append('username', username);
        formData.append('password', password);
        formData.append('client_id', 'ykwM7j9N1XXGXZaT8EArPCcpzCVjN0Ya9yCifgTL')
        formData.append('client_secret', 'nW2zSEM4ntrVKjFRn9gQASeCZbtVMLaMyEDXjIC4iHQpSWE2KNI9zfgdefGyrnPO32EXBYhfqMRAR1NKVyTaL2xfMt49vqgQV5bCj2Pt83uh9hXLm2zRKaPwq8KceXdy')
        formData.append('grant_type', 'password')
        try {
            if (!username || !password) {
                setError('Tên đăng nhập và mật khẩu không được trống');
                setShow(true)
                setTimeout(() => {
                    setShow(false)
                }, 2000)
                // console.log(show)
                return;
            }
            else {
                setLoading(true)
                let response = await axios.post(endpoints['login'], formData, {
                    headers: {
                        "Content-Type": "multipart/form-data",
                    },
                });
                // lưu vào AsyncStorage
                await AsyncStorage.setItem('token', response.data.access_token);
                let { data } = await axios.get(endpoints['current-user'], {
                    headers: {
                        'Authorization': "Bearer " + response.data.access_token,
                    },
                });
                // console.log('thông tin', data)
                console.log('Đăng nhập thành công');
                // console.log(response.data.access_token);

                navigation.navigate('Home');
                // lưu thông tin user đăng nhập
                try {
                    await AsyncStorage.setItem('user', JSON.stringify(data));
                    dispatch({
                        "type": "login",
                        "payload": data
                    });
                    // console.log('dispatch', data)
                } catch (error) {
                    console.log('Lỗi khi lưu vào AsyncStorage:', error);
                }
                setLoading(false)
            }

        } catch (error) {
            console.log('Lỗi:', error);
            setError('Tên đăng nhập hoặc mật khẩu sai');
            setShow(true)
            setLoading(false)
        }
    };
    const image = { uri: 'https://res.cloudinary.com/dhdca9ibd/image/upload/v1710425667/courseapp/q0mg0mzbkurmdxetbbf1.jpg' };
    useEffect(() => {
        if (show === true) {
            const timer = setTimeout(() => {
                setShow(false);
            }, 2000);
            return () => clearTimeout(timer);
        }
    }, [show]);
    return (
        <ImageBackground source={image} resizeMode="cover" style={MyStyles.image}>
            <View style={MyStyles.container}>
                <Text style={MyStyles.context}>Welcome Back</Text>
                <View style={{ marginVertical: 30 }}>
                    <View style={Style.input}>
                        <FontAwesome style={{ width: '15%' }} name='user' size={20} color={Color.main_color} />
                        <TextInput value={username} onChangeText={t => setUsername(t)} style={{ color: Color.main_color }}
                            placeholder="Tên đăng nhập..."
                            placeholderTextColor={Color.main_color}
                        />
                    </View>
                    <View style={Style.input}>
                        <Entypo name='lock' size={20} color={Color.main_color} style={{ width: '15%' }} />
                        <TextInput value={password} onChangeText={t => setPassword(t)} style={{ color: Color.main_color }}
                            placeholder="Mật khẩu..."
                            placeholderTextColor={Color.main_color}
                            secureTextEntry={true}
                        />
                    </View>
                </View>
                <View style={{
                    display: 'flex',
                    flexDirection: 'row',
                    width: '100%',
                    justifyContent: 'space-between',

                }}>
                    <TouchableOpacity >
                        <Text style={Style.link}>Quên mật khẩu ??</Text>
                    </TouchableOpacity>
                    <TouchableOpacity >
                        <Text style={Style.link}>Đăng ký ...</Text>
                    </TouchableOpacity>
                </View>
                {loading === true ? <ActivityIndicator /> : <>
                    <TouchableOpacity onPress={login}>
                        <Text style={Style.button}>Đăng nhập</Text>
                    </TouchableOpacity>

                </>}

            </View>
            {show === true && (
                <ToastifyMessage
                    type="danger"
                    text={error}
                    description="Đăng nhập thất bại"
                />
            )}
        </ImageBackground>
    );
}

export default Login;