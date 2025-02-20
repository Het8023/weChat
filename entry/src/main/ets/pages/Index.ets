@Entry
@Component
struct Index {
  @Builder
  commonTabBar(txt: string) {
    Column() {
      Text(txt)
    }
  }

  build() {
    Column() {
      Tabs() {
        TabContent().tabBar(this.commonTabBar('微信'))
        TabContent().tabBar(this.commonTabBar('联系人'))
        TabContent().tabBar(this.commonTabBar('发现'))
        TabContent().tabBar(this.commonTabBar('我的'))
      }
      .barPosition(BarPosition.End)
    }
    .width('100%')
    .height('100%')
  }
}