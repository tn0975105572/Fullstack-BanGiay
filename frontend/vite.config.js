import { defineConfig } from "vite";
import react from "@vitejs/plugin-react";

export default defineConfig({
  plugins: [react()],

  server: {
    watch: {
      usePolling: true, // Giúp theo dõi thay đổi trên file hệ thống
    },
    port: 3001, // Đổi cổng nếu cần
    open: true, // Tự động mở trình duyệt khi chạy server
  },
});
