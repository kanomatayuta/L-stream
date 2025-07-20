# nuxt-base

## Cài đặt
- Chạy `yarn` để cài đặt các package cần thiết

## Sử dụng
- Mở file **.env** và sửa giá trị `API_BASE_URL` thành URL của API
- Chạy `yarn dev` để develop dự án
- Chạy `yarn generate` để build dự án

## Hướng dẫn

1. Khắc phục lỗi component chưa được khai báo

Mở file `plugins/antd` và kiểm tra xem component cần tìm có tồn tại trong dánh sách import không. Nếu chưa có thì mở [link này](https://github.com/vueComponent/ant-design-vue/blob/master/components/index.js) và tìm component tương ứng rồi import vào. Lưu ý: Do kích cỡ thư viện là rất lớn nên vui lòng **KHÔNG IMPORT TOÀN BỘ THƯ VIỆN** như thế này: `import Antd from 'ant-design-vue'`. Trên trang chủ của ANTD cũng đã có giải thích về [vấn đề này](https://antdv.com/docs/vue/getting-started/#Import-on-Demand)

2. Cách sử dụng plugin API
- Plugin API được inject thông qua thuộc tính `$api`
- Các phương thức có sẵn: `list`, `create`, `show`, `update`, `delete`
- Có 2 cách để khai báo một repository mới:
* Sử dụng `make` nếu chỉ cần tạo mới repository với những phương thức có sẵn:
```javascript
{
    order: make($axios, 'order')
}
```
* Sử dụng `bind` nếu muốn tạo mới một repository với các phương thức mở rộng:
```javascript
{
    product: bind($axios, ProductRepository)
}
```
- Ví dụ sử dụng:
```javascript
this.$api.order.list()
this.$api.product.show(id)
```