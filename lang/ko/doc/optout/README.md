## （옵션）OPT-OUT의 구현

광고 회사에 따라서는 타케팅 광고에 이용되지 않는 것을 유저가 선택하는 것이 가능합니다. 앱의 기동시의

```objective-c
if(user.optout) {

[[AppAdForceManager sharedManager] sendConversionWithStartPage:@"default"];
```
---
[TOP으로](/lang/ko/README.md)