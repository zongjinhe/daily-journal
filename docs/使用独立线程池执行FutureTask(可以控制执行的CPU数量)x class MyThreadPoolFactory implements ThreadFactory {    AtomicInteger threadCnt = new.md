1. #### 使用独立线程池执行FutureTask(可以控制执行的CPU数量)

   ```java
   class MyThreadPoolFactory implements ThreadFactory {
       AtomicInteger threadCnt = new AtomicInteger();
   
       @Override
       public Thread newThread(Runnable r) {
           return new Thread(r, "my-thread-" + threadCnt.incrementAndGet());
       }
   }
   
   class Main {
       public static void main(String[] args) throws Exception {
           ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(5, 10, 0, TimeUnit.SECONDS, new LinkedBlockingQueue<>(),
                   new MyThreadPoolFactory(), new ThreadPoolExecutor.AbortPolicy());
           List<Future<String>> futureList = new ArrayList<>();
           CountDownLatch countDownLatch = new CountDownLatch(10);
           for (int i = 0; i < 10; i++) {
               System.out.println("=======>" + i);
               CompletableFuture<String> future = CompletableFuture.supplyAsync(() -> {
                   try {
                       Thread.sleep(1000);
                   } catch (Exception ex) {
   
                   }
                   return Thread.currentThread().getName() + "\tdfdfsd\t" + LocalDateTime.now();
               }, threadPoolExecutor);
               futureList.add(future);
           }
           futureList.forEach(elem -> {
               countDownLatch.countDown();
               try {
                   System.out.println(elem.get());
               } catch (Exception ex) {
   
               }
   
           });
           countDownLatch.await();
           threadPoolExecutor.shutdown();
       }
   }
   ```

   