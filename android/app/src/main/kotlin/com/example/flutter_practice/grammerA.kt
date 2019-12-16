package com.example.flutter_practice

import io.flutter.app.FlutterActivity

/**
 * @Description:
 * @Author: caoyanchang
 * @Date: 2019-12-16 15:10
 *
 */
class grammerA : FlutterActivity() {

    val a: Int = 1;
    val b: Int = 2;
    var c = 3;
    fun sum1(a: Int, b: Int): Int {
        return a + b;
    }


    fun sum2(a: Int, b: Int) = a + b;

    fun sum3(a: Int, b: Int) {
        c += 8;
        print(",,,")
    }

    fun maxOf(a: Int, b: Int) = if (a > b) a else b;

    //check null
    fun parseInt(str: String): Int? {
        return null;
    }


    fun printProduct(arg1: String, arg2: String) {
        val aa = parseInt(arg1);
        val bb = parseInt(arg2);
        if (aa != null && bb != null) {
            println(aa * bb)
        }
    }

    fun getStringLength1(obj: Any): Int? {
        if (obj is String) {
            return obj.length;
        }
        return null;
    }

    fun getStringLength2(obj: Any): Int? {
        if (obj !is String) return null;
        return obj.length
    }

    val items = listOf("apple", "banana", "kiwifruit")

    fun getFor(items: List<String>) {
        for (item in items) {
            println(item)
        }
    }

    //while
    fun getWhile(items: List<String>) {
        var index = 0;
        while (index < items.size) {
            println("item at $index is ${items[index]}")
            index++
        }
    }

    //when
    fun describe(obj: Any): String =
            when (obj) {
                1 -> "one"
                "hello" -> "two"
                is Long -> "three"
                !is String -> "not a string"
                else -> "unknown"
            }

    //in
    fun useIn() {
        val x = 10;
        val y = 9;
        if (x in 1..y + 1) {
            println("fits in range")
        }

        val list = listOf<String>("a", "b", "c")
        if (4 !in 1..list.lastIndex) {
            println("list size is out of valid list")
        }

        for (x in 1..5) {
            print(x)
        }
    }

    //collection
    fun useCollections() {
        val items1 = listOf("apple", "banana", "kiwifruit")
        val items2 = listOf("app", "bana", "kiwifruit")
        items1.filter { it.startsWith("a") }
                .sortedBy { it }
                .map { it.toUpperCase() }
                .forEach{ print(it)}

    }


}