package com.gtunes

class Song {

	String title
	String artist
	Album album
	Integer duration

    static constraints = {
    	title blank: false
    	artist blank: false
    	album blank: false
    	duration min: 1
    }
}
