package examples.posts;

import com.intuit.karate.junit5.Karate;

class PostsRunner {

    @Karate.Test
    Karate testPosts() {
        return Karate.run("posts").relativeTo(getClass());
    }    

}