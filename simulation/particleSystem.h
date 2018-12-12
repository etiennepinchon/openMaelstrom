#pragma once
#include <mutex>
#include <vector>

struct cuda_particleSystem {
private:
  cuda_particleSystem() = default;
public:
  bool init = false;
  volatile bool running = true;

  std::mutex simulation_lock;

  static cuda_particleSystem &instance();

  void step();
  void* retainArray(std::string arrayName);
  void init_simulation();
};