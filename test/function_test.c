#include <ctest.h>
#include <../src/function.h>

CTEST(Test_1, input_1)
{
    int result = Check(1);
	
    int expected = 2;
	
    ASSERT_EQUAL(expected, result);
}

CTEST(Test_2, input_m_1)
{
    int result = Check(-1);
	
    int expected = 1;
	
    ASSERT_EQUAL(expected, result);
}

CTEST(Test_3, input_0)
{
    int result = Check(0);
	
    int expected = 0;
	
    ASSERT_EQUAL(expected, result);
}

CTEST(Test_4, input_3_2_1)
{
    int result = Discriment(3,2,1);
	
    int expected = -8;
	
    ASSERT_EQUAL(expected, result);
}

CTEST(Test_5, input_1_3_2)
{
    int result = Discriment(1,3,2);
	
    int expected = 1;
	
    ASSERT_EQUAL(expected, result);
}
