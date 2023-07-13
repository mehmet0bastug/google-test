#include <gtest/gtest.h>

TEST(Selamlardeneme , Deneme){
    ASSERT_TRUE(true);
}
int main(int argc , char **argv){
    testing::InitGoogleTest();
    return RUN_ALL_TESTS();
}



