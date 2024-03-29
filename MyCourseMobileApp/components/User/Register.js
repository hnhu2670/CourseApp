import { useState } from "react";
import { View, Text, TextInput, ActivityIndicator, Image } from "react-native";
import { TouchableOpacity } from "react-native-gesture-handler";
import MyStyles from "../../styles/MyStyles";
import Style from "./Style";
import * as ImagePicker from 'expo-image-picker';
import API, { endpoints } from "../../configs/API";
import axios from "axios";

const Register = ({ navigation }) => {
    const [user, setUser] = useState({
        "first_name": "",
        "last_name": "",
        "username": "",
        "password": "",
        "email": ""
    });

    const [loading, setLoading] = useState(false);

    const register = async () => {
        setLoading(true);

        // const form = new FormData();
        // for (let key in user)
        //     if (key === 'avatar') {
        //         form.append(key, {
        //             uri: user[key].uri,
        //             name: user[key].fileName,
        //             type: user[key].type
        //         })
        //     } else
        //         form.append(key, user[key]);
        const formData = new FormData()
        for (let field in user) {
            formData.append(field, user[field]);
            console.log(user[field])
        }
        try {
            let res = await axios.post(endpoints['register'], formData, {
                headers: {
                    'Content-Type': 'multipart/form-data'
                }
            });
            console.info(res.data);
            navigation.navigate("Login");
        } catch (ex) {
            console.error(ex);
        } finally {
            setLoading(false);
        }
    }

    const picker = async () => {
        let { status } = await ImagePicker.requestMediaLibraryPermissionsAsync();

        if (status !== 'granted') {
            alert("Permission Denied!");
        } else {
            let res = await ImagePicker.launchImageLibraryAsync();
            if (!res.canceled) {
                change("avatar", res.assets[0])
            }
        }
    }

    const change = (field, value) => {
        setUser(current => {
            return { ...current, [field]: value }
        })
    }

    return (
        <View style={MyStyles.container}>
            <Text style={MyStyles.subject}>ĐĂNG KÝ</Text>

            <TextInput value={user.first_name} onChangeText={t => change("first_name", t)} style={Style.input} placeholder="Tên..." />
            <TextInput value={user.last_name} onChangeText={t => change("last_name", t)} style={Style.input} placeholder="Họ và tên lót..." />
            <TextInput value={user.username} onChangeText={t => change("username", t)} style={Style.input} placeholder="Tên đăng nhập..." />
            <TextInput value={user.password} onChangeText={t => change("password", t)} style={Style.input} placeholder="Mật khẩu..." />
            <TextInput style={Style.input} placeholder="Xác nhận mật khẩu..." />
            <TextInput value={user.email} onChangeText={t => change("email", t)} style={Style.input} placeholder="Email..." />
            {loading === true ? <ActivityIndicator /> : <>
                <TouchableOpacity onPress={register}>
                    <Text style={Style.button}>Đăng ký</Text>
                </TouchableOpacity>
            </>}

        </View>
    );
}

export default Register;