describe("a suite: 一个测试组", function() {
    var a;
    it("a spec: 一个测试 错误", function(){
        a = false;
        expect(a).toBe(true);
    });
    it("a spec: 一个测试 正确", function(){
        a = true;
        expect(a).toBe(true);
    });
});
