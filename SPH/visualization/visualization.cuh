#pragma once
#include <utility/identifier.h>
/*
Module used to map simulation data (per particlle values) to a range of 0 to 1 for rendering.
*/
namespace SPH{
	namespace Visualizer{
		struct Memory{
			// basic information
			parameter<parameters::num_ptcls> num_ptcls;
			parameter<parameters::timestep> timestep;
			parameter<parameters::radius> radius;
			parameter<parameters::rest_density> rest_density;
			parameter<parameters::max_numptcls> max_numptcls;

			// parameters

			// temporary resources (mapped as read/write)
			// input resources (mapped as read only)
			const_array<arrays::position> position;

			// output resources (mapped as read/write)
			write_array<arrays::renderIntensity> renderIntensity;

			// swap resources (mapped as read/write)
			// cell resources (mapped as read only)
			// neighborhood resources (mapped as read only)
			// virtual resources (mapped as read only)
			// volume boundary resources (mapped as read only)
			
			using swap_arrays = std::tuple<>;
			using input_arrays = std::tuple<arrays::position>;
			using output_arrays = std::tuple<arrays::renderIntensity>;
			using temporary_arrays = std::tuple<>;
			using basic_info_params = std::tuple<parameters::num_ptcls, parameters::timestep, parameters::radius, parameters::rest_density, parameters::max_numptcls>;
			using cell_info_params = std::tuple<>;
			using cell_info_arrays = std::tuple<>;
			using virtual_info_params = std::tuple<>;
			using virtual_info_arrays = std::tuple<>;
			using boundaryInfo_params = std::tuple<>;
			using boundaryInfo_arrays = std::tuple<>;
			using neighbor_info_params = std::tuple<>;
			using neighbor_info_arrays = std::tuple<>;
			using parameters = std::tuple<>;
			constexpr static const bool resort = false;
constexpr static const bool inlet = false;
		};
		//valid checking function
		inline bool valid(Memory){
			bool condition = true;
			return condition;
		}
		
		void visualizeParticles(Memory mem = Memory());
	} // namspace Visualizer
}// namespace SPH
