package com.cbb.utils;

import java.util.UUID;

/**
 * @Author: chenbj
 * @Description: 主键类
 * @Date: 2018/5/30 17:50
 * @Version:
 */
public class PrimaryKeyUtils {
    public static String createKey(){
        UUID uuid = UUID.randomUUID();
        return uuid.toString().replace("_","");
    }
}
