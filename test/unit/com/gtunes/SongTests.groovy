package com.gtunes



import grails.test.mixin.*
import org.junit.*

/**
 * See the API for {@link grails.test.mixin.domain.DomainClassUnitTestMixin} for usage instructions
 */
@TestFor(Song)
class SongTests {

    void testMinimumDuration() {
       mockForConstraintsTests Song
       def song = new Song(title: 'Some title',
       						artist:'Some Artist', 
       						album:'Some album', 
       						duration: 1)
       assert !song.validate()

       //assert 'min' == song.errors['duration']
    }
}
