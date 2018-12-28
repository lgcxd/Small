package com.cbb.utils;

import java.security.MessageDigest;

/**
 * @Author: chenbj
 * @Description: 加密类
 * @Date: 2018/5/30 17:40
 * @Version:
 */
public class MD5Utils {
    public static String encrypt(String data){
        StringBuilder stringBuilder = new StringBuilder();
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            //更新数据
            messageDigest.update(data.getBytes());
            //加密
            byte[] des= messageDigest.digest();
            for (int i = 0; i < des.length; i++) {
                int y = (int) des[i] & 0xff;
                //干预-加密
                y = y+1;
                if (y < 16){
                    stringBuilder.append(0);
                }
                //转换为16进制
                stringBuilder.append(Integer.toHexString(y));
            }
        }catch (Exception e){
            e.printStackTrace();
        }
        return stringBuilder.toString();
    }
}
