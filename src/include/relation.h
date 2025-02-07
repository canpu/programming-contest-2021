#pragma once

#include <cstdint>
#include <string>
#include <vector>
#include <unordered_map>
#include <set>

using RelationId = unsigned;

class Relation {
    private:
        /// Owns memory (false if it was mmaped)
        bool owns_memory_;
        /// The number of tuples
        uint64_t size_;
        /// The join column containing the keys
        std::vector<uint64_t *> columns_;
        //// Hash tables
        std::unordered_map<unsigned, std::unordered_map<uint64_t, std::set<unsigned>>> maps;

    public:
        /// Constructor without mmap
        Relation(uint64_t size, std::vector<uint64_t *> &&columns)
            : owns_memory_(true), size_(size), columns_(columns) {}
        /// Constructor using mmap
        explicit Relation(const char *file_name);
        /// Delete copy constructor
        Relation(const Relation &other) = delete;
        /// Move constructor
        Relation(Relation &&other) = default;

        /// The destructor
        ~Relation();

        /// Stores a relation into a file (binary)
        void storeRelation(const std::string &file_name);
        /// Stores a relation into a file (csv)
        void storeRelationCSV(const std::string &file_name);
        /// Dump SQL: Create and load table (PostgreSQL)
        void dumpSQL(const std::string &file_name, unsigned relation_id);

        /// The number of tuples
        uint64_t size() const { return size_; }
        /// The join column containing the keys
        const std::vector<uint64_t *> &columns() const { return columns_; }

        /// Build Hash maps (used after loading)
        void buildHashMaps();
        void buildHashMap(unsigned col_id);
        const std::unordered_map<uint64_t, std::set<unsigned>> &getHashMap(unsigned col_id);

    private:
        /// Loads data from a file
        void loadRelation(const char *file_name);
};

