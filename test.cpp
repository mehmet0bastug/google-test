#include <gtest/gtest.h>
static int square (int a){
    return a*a;
}
TEST(FactorialDeneme , Deneme){
    EXPECT_EQ(square(5),25);
}
int main(int argc , char **argv){
    testing::InitGoogleTest();
    return RUN_ALL_TESTS();
}



