#include <gtest/gtest.h>
#include "lib/prototype.h"

TEST(TEST01, BasicTesting) {
    EXPECT_EQ(sum(2, 2), 4);
    EXPECT_NE(sum(1, 1), 3);
};
