/**
 * Test our see links: Markdown URL, regular URL, Class Link, Method Link, Method Link w/ Overload Selector.
 * Also test that overloads are correctly linked within their own class, method TOC entry : correct overloaded method.
 * Test inline link syntax: {@link TEST_Links.getInt}, and another one: {@link TEST_Methods.method10},
 * and markdown link: {@link [Markdown Link](http://code.google.com/p/apex-lang/)}, and regular link: {@link https://www.google.com }
 * 
 * @author Bill C Riemers
 * @since 2022-10-05 Added changelog
 * 
 * @see [Markdown Link](http://code.google.com/p/apex-lang/)
 * @see https://www.google.com
 * @see TEST_ARRAYUTILS
 * @see TEST_ARRAYUTILS.qsort
 * @see TEST_ArrayUtils.qsort[2]
 * @see TEST_NestedClasses.ConcreteChildClass
 * @see TEST_NestedClasses.ConcreteChildClass.OverLOADEDMethod
 * @see TEST_NestedClasses.ConcreteChildClass.OverLOADEDMethod[1]
 * @see ThisOneShouldFail
 * @group Assertions
 */
public class TEST_Links {
    /**
     * @see TEST_Links.getInt[1]
     * @see TEST_Links.getInt[3]
     */
    public static Integer getInt() { return MY_INT; }

    /** Static method overload 1 */
    public static Integer getInt(Integer int, Integer int2) {
        return MY_INT + int;
    }

    /** Static method overload 2 */
    public static Integer getInt(Integer int, Integer int2, Integer int3) {
        return MY_INT + int;
    }

    /**
     * Static method overload 3
     * @param int int desc
     * @param int2 int2 desc
     * @param int3 int3 desc
     * @param int4 int4 desc
     * @return `Integer`
     */
    public static Integer getInt(Integer int, Integer int2, Integer int3, Integer int4) {
        return MY_INT + int;
    }
}