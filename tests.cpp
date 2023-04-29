#include <gtest/gtest.h>
#include "lib/prototype.h"

TEST(ADDITIONAL, BasicTesting) {
    EXPECT_EQ(runPrototypeMainBody(), 0);
    EXPECT_NE(runPrototypeMainBody(), 1); 
};
