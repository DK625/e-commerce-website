import React, { useState } from 'react';

const FilterSection = ({ title, options, state, setState }) => {
    return (
        <div className="border-bottom mb-4 pb-4">
            <h5 className="font-weight-semi-bold mb-4">{`Filter by ${title}`}</h5>
            <form>
                {options.map((option) => (
                    <div
                        key={option.id}
                        className="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3"
                    >
                        <input
                            type="checkbox"
                            className="custom-control-input"
                            id={option.id}
                            checked={state.includes(option.id)}
                            onChange={() => {
                                if (option.id === `${state[0]}-all`) {
                                    setState([`${state[0]}-all`]);
                                } else {
                                    setState((prevSelected) => {
                                        const isSelected = prevSelected.includes(option.id);

                                        if (isSelected) {
                                            return prevSelected.filter(
                                                (itemId) => itemId !== option.id && itemId !== `${state[0]}-all`
                                            );
                                        } else {
                                            return [`${state[0]}-all`, option.id];
                                        }
                                    });
                                }
                            }}
                        />
                        <label className="custom-control-label" htmlFor={option.id}>
                            {option.label}
                        </label>
                        <span className="badge border font-weight-normal">{option.count}</span>
                    </div>
                ))}
            </form>
        </div>
    );
};

const Filters = () => {
    const priceRanges = [
        { id: 'price-all', label: 'All Price', range: null, count: 1000 },
        { id: 'price-1', label: '$0 - $100', range: [0, 100], count: 150 },
        { id: 'price-2', label: '$100 - $200', range: [100, 200], count: 295 },
        { id: 'price-3', label: '$200 - $300', range: [200, 300], count: 246 },
        { id: 'price-4', label: '$300 - $400', range: [300, 400], count: 145 },
        { id: 'price-5', label: '$400 - $500', range: [400, 500], count: 168 },
    ];

    const sizeOptions = [
        { id: 'size-all', label: 'All Size', count: 1000 },
        { id: 'size-1', label: 'XS', count: 150 },
        { id: 'size-2', label: 'S', count: 295 },
        { id: 'size-3', label: 'M', count: 246 },
        { id: 'size-4', label: 'L', count: 145 },
        { id: 'size-5', label: 'XL', count: 168 },
    ];

    const colorOptions = [
        { id: 'color-all', label: 'All Color', count: 1000 },
        { id: 'color-1', label: 'Black', count: 150 },
        { id: 'color-2', label: 'White', count: 295 },
        { id: 'color-3', label: 'Red', count: 246 },
        { id: 'color-4', label: 'Blue', count: 145 },
        { id: 'color-5', label: 'Green', count: 168 },
    ];

    const [selectedPrices, setSelectedPrices] = useState(['price-all']);
    const [selectedSizes, setSelectedSizes] = useState(['size-all']);
    const [selectedColors, setSelectedColors] = useState(['color-all']);

    return (
        <>
            <FilterSection
                title="price"
                options={priceRanges}
                state={selectedPrices}
                setState={setSelectedPrices}
            />
            <FilterSection
                title="size"
                options={sizeOptions}
                state={selectedSizes}
                setState={setSelectedSizes}
            />
            <FilterSection
                title="color"
                options={colorOptions}
                state={selectedColors}
                setState={setSelectedColors}
            />
        </>
    );
};

export default Filters;
